.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentOrBuilder;"
    }
.end annotation


# instance fields
.field private action_:Ljava/lang/Object;

.field private bitField0_:I

.field private category_:Lcom/google/protobuf/LazyStringList;

.field private componentName_:Ljava/lang/Object;

.field private dataType_:Ljava/lang/Object;

.field private data_:Ljava/lang/Object;

.field private extra_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;",
            ">;"
        }
    .end annotation
.end field

.field private flag_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hdpiCountdownIconUrl_:Ljava/lang/Object;

.field private hdpiListItemIconUrl_:Ljava/lang/Object;

.field private mdpiCountdownIconUrl_:Ljava/lang/Object;

.field private mdpiListItemIconUrl_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17642
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 17860
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->componentName_:Ljava/lang/Object;

    .line 17913
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->action_:Ljava/lang/Object;

    .line 17966
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->data_:Ljava/lang/Object;

    .line 18019
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->dataType_:Ljava/lang/Object;

    .line 18072
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    .line 18137
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    .line 18226
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    .line 18271
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 18324
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 18377
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiListItemIconUrl_:Ljava/lang/Object;

    .line 18430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiListItemIconUrl_:Ljava/lang/Object;

    .line 17643
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->maybeForceBuilderInitialization()V

    .line 17644
    return-void
.end method

.method static synthetic access$20000()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1

    .prologue
    .line 17637
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1

    .prologue
    .line 17649
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCategoryIsMutable()V
    .locals 2

    .prologue
    .line 18074
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 18075
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    .line 18076
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18078
    :cond_0
    return-void
.end method

.method private ensureExtraIsMutable()V
    .locals 2

    .prologue
    .line 18140
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 18141
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    .line 18142
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18144
    :cond_0
    return-void
.end method

.method private ensureFlagIsMutable()V
    .locals 2

    .prologue
    .line 18228
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 18229
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    .line 18230
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18232
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 17647
    return-void
.end method


# virtual methods
.method public addAllCategory(Ljava/lang/Iterable;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;"
        }
    .end annotation

    .prologue
    .line 18114
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureCategoryIsMutable()V

    .line 18115
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 18117
    return-object p0
.end method

.method public addAllExtra(Ljava/lang/Iterable;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;",
            ">;)",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;"
        }
    .end annotation

    .prologue
    .line 18207
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureExtraIsMutable()V

    .line 18208
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 18210
    return-object p0
.end method

.method public addAllFlag(Ljava/lang/Iterable;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;"
        }
    .end annotation

    .prologue
    .line 18258
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureFlagIsMutable()V

    .line 18259
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 18261
    return-object p0
.end method

.method public addCategory(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18104
    if-nez p1, :cond_0

    .line 18105
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18107
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureCategoryIsMutable()V

    .line 18108
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 18110
    return-object p0
.end method

.method public addCategoryBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18127
    if-nez p1, :cond_0

    .line 18128
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18130
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureCategoryIsMutable()V

    .line 18131
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 18133
    return-object p0
.end method

.method public addExtra(ILcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 18200
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureExtraIsMutable()V

    .line 18201
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18203
    return-object p0
.end method

.method public addExtra(ILcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18183
    if-nez p2, :cond_0

    .line 18184
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18186
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureExtraIsMutable()V

    .line 18187
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18189
    return-object p0
.end method

.method public addExtra(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 2
    .parameter

    .prologue
    .line 18193
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureExtraIsMutable()V

    .line 18194
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18196
    return-object p0
.end method

.method public addExtra(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18173
    if-nez p1, :cond_0

    .line 18174
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18176
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureExtraIsMutable()V

    .line 18177
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18179
    return-object p0
.end method

.method public addFlag(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 2
    .parameter

    .prologue
    .line 18251
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureFlagIsMutable()V

    .line 18252
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18254
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17637
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 2

    .prologue
    .line 17688
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    .line 17689
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 17690
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 17692
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17637
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 5

    .prologue
    .line 17696
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 17697
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17698
    const/4 v2, 0x0

    .line 17699
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 17700
    or-int/lit8 v2, v2, 0x1

    .line 17702
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->componentName_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17703
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 17704
    or-int/lit8 v2, v2, 0x2

    .line 17706
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->action_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17707
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 17708
    or-int/lit8 v2, v2, 0x4

    .line 17710
    :cond_2
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->data_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17711
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 17712
    or-int/lit8 v2, v2, 0x8

    .line 17714
    :cond_3
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->dataType_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17715
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 17716
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    .line 17718
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17720
    :cond_4
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 17721
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 17722
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    .line 17723
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17725
    :cond_5
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/util/List;)Ljava/util/List;

    .line 17726
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 17727
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    .line 17728
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17730
    :cond_6
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/util/List;)Ljava/util/List;

    .line 17731
    and-int/lit16 v3, v1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 17732
    or-int/lit8 v2, v2, 0x10

    .line 17734
    :cond_7
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17735
    and-int/lit16 v3, v1, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 17736
    or-int/lit8 v2, v2, 0x20

    .line 17738
    :cond_8
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$21002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17739
    and-int/lit16 v3, v1, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 17740
    or-int/lit8 v2, v2, 0x40

    .line 17742
    :cond_9
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiListItemIconUrl_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$21102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17743
    and-int/lit16 v1, v1, 0x400

    const/16 v3, 0x400

    if-ne v1, v3, :cond_a

    .line 17744
    or-int/lit16 v1, v2, 0x80

    .line 17746
    :goto_0
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiListItemIconUrl_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$21202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17747
    invoke-static {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$21302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;I)I

    .line 17748
    return-object v0

    :cond_a
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 17637
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17637
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1

    .prologue
    .line 17653
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 17654
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->componentName_:Ljava/lang/Object;

    .line 17655
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17656
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->action_:Ljava/lang/Object;

    .line 17657
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17658
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->data_:Ljava/lang/Object;

    .line 17659
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17660
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->dataType_:Ljava/lang/Object;

    .line 17661
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17662
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    .line 17663
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17664
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    .line 17665
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17666
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    .line 17667
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17668
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 17669
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17670
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 17671
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17672
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiListItemIconUrl_:Ljava/lang/Object;

    .line 17673
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17674
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiListItemIconUrl_:Ljava/lang/Object;

    .line 17675
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17676
    return-object p0
.end method

.method public clearAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1

    .prologue
    .line 17949
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17950
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->action_:Ljava/lang/Object;

    .line 17952
    return-object p0
.end method

.method public clearCategory()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1

    .prologue
    .line 18120
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    .line 18121
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18123
    return-object p0
.end method

.method public clearComponentName()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1

    .prologue
    .line 17896
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17897
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getComponentName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->componentName_:Ljava/lang/Object;

    .line 17899
    return-object p0
.end method

.method public clearData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1

    .prologue
    .line 18002
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18003
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->data_:Ljava/lang/Object;

    .line 18005
    return-object p0
.end method

.method public clearDataType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1

    .prologue
    .line 18055
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18056
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDataType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->dataType_:Ljava/lang/Object;

    .line 18058
    return-object p0
.end method

.method public clearExtra()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1

    .prologue
    .line 18213
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    .line 18214
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18216
    return-object p0
.end method

.method public clearFlag()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1

    .prologue
    .line 18264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    .line 18265
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18267
    return-object p0
.end method

.method public clearHdpiCountdownIconUrl()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1

    .prologue
    .line 18307
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18308
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getHdpiCountdownIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 18310
    return-object p0
.end method

.method public clearHdpiListItemIconUrl()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1

    .prologue
    .line 18413
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18414
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getHdpiListItemIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiListItemIconUrl_:Ljava/lang/Object;

    .line 18416
    return-object p0
.end method

.method public clearMdpiCountdownIconUrl()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1

    .prologue
    .line 18360
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18361
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getMdpiCountdownIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 18363
    return-object p0
.end method

.method public clearMdpiListItemIconUrl()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1

    .prologue
    .line 18466
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18467
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getMdpiListItemIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiListItemIconUrl_:Ljava/lang/Object;

    .line 18469
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 17637
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 17637
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17637
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 2

    .prologue
    .line 17680
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

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
    .line 17637
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17918
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->action_:Ljava/lang/Object;

    .line 17919
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 17920
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 17921
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->action_:Ljava/lang/Object;

    .line 17924
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getActionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17929
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->action_:Ljava/lang/Object;

    .line 17930
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17931
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17933
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->action_:Ljava/lang/Object;

    .line 17936
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getCategory(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 18087
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCategoryBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter

    .prologue
    .line 18091
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryCount()I
    .locals 1

    .prologue
    .line 18084
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getCategoryList()Ljava/util/List;
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
    .line 18081
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17865
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->componentName_:Ljava/lang/Object;

    .line 17866
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 17867
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 17868
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->componentName_:Ljava/lang/Object;

    .line 17871
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getComponentNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17876
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->componentName_:Ljava/lang/Object;

    .line 17877
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17878
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17880
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->componentName_:Ljava/lang/Object;

    .line 17883
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17971
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->data_:Ljava/lang/Object;

    .line 17972
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 17973
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 17974
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->data_:Ljava/lang/Object;

    .line 17977
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getDataBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17982
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->data_:Ljava/lang/Object;

    .line 17983
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17984
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17986
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->data_:Ljava/lang/Object;

    .line 17989
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18024
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->dataType_:Ljava/lang/Object;

    .line 18025
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 18026
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 18027
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->dataType_:Ljava/lang/Object;

    .line 18030
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getDataTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 18035
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->dataType_:Ljava/lang/Object;

    .line 18036
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18037
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18039
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->dataType_:Ljava/lang/Object;

    .line 18042
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 17637
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17637
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 1

    .prologue
    .line 17684
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 1
    .parameter

    .prologue
    .line 18153
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    return-object p0
.end method

.method public getExtraCount()I
    .locals 1

    .prologue
    .line 18150
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExtraList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18147
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFlag(I)I
    .locals 1
    .parameter

    .prologue
    .line 18241
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFlagCount()I
    .locals 1

    .prologue
    .line 18238
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFlagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18235
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHdpiCountdownIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18276
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 18277
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 18278
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 18279
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 18282
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getHdpiCountdownIconUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 18287
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 18288
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18289
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18291
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 18294
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getHdpiListItemIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18382
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiListItemIconUrl_:Ljava/lang/Object;

    .line 18383
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 18384
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 18385
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiListItemIconUrl_:Ljava/lang/Object;

    .line 18388
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getHdpiListItemIconUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 18393
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiListItemIconUrl_:Ljava/lang/Object;

    .line 18394
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18395
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18397
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiListItemIconUrl_:Ljava/lang/Object;

    .line 18400
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getMdpiCountdownIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18329
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 18330
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 18331
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 18332
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 18335
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getMdpiCountdownIconUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 18340
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 18341
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18342
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18344
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 18347
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getMdpiListItemIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18435
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiListItemIconUrl_:Ljava/lang/Object;

    .line 18436
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 18437
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 18438
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiListItemIconUrl_:Ljava/lang/Object;

    .line 18441
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getMdpiListItemIconUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 18446
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiListItemIconUrl_:Ljava/lang/Object;

    .line 18447
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18448
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18450
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiListItemIconUrl_:Ljava/lang/Object;

    .line 18453
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    .line 17915
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

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

.method public hasComponentName()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 17862
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasData()Z
    .locals 2

    .prologue
    .line 17968
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

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

.method public hasDataType()Z
    .locals 2

    .prologue
    .line 18021
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

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

.method public hasHdpiCountdownIconUrl()Z
    .locals 2

    .prologue
    .line 18273
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

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

.method public hasHdpiListItemIconUrl()Z
    .locals 2

    .prologue
    .line 18379
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

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

.method public hasMdpiCountdownIconUrl()Z
    .locals 2

    .prologue
    .line 18326
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

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

.method public hasMdpiListItemIconUrl()Z
    .locals 2

    .prologue
    .line 18432
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17827
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hasAction()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 17837
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 17831
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->getExtraCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 17832
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->getExtra(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    .line 17834
    goto :goto_0

    .line 17831
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17837
    :cond_2
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
    .line 17637
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17637
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

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
    .line 17637
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17844
    const/4 v1, 0x0

    .line 17846
    :try_start_0
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17851
    if-eqz v0, :cond_0

    .line 17852
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    .line 17855
    :cond_0
    return-object p0

    .line 17847
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 17848
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17849
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17851
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 17852
    invoke-virtual {p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    :cond_1
    throw v0

    .line 17851
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 2
    .parameter

    .prologue
    .line 17752
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 17823
    :goto_0
    return-object v0

    .line 17753
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hasComponentName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17754
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17755
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20200(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->componentName_:Ljava/lang/Object;

    .line 17758
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17759
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17760
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->action_:Ljava/lang/Object;

    .line 17763
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hasData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17764
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17765
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->data_:Ljava/lang/Object;

    .line 17768
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hasDataType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17769
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17770
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->dataType_:Ljava/lang/Object;

    .line 17773
    :cond_4
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 17774
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 17775
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    .line 17776
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17783
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 17784
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 17785
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    .line 17786
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17793
    :cond_6
    :goto_2
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 17794
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 17795
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    .line 17796
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17803
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hasHdpiCountdownIconUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 17804
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17805
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 17808
    :cond_8
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hasMdpiCountdownIconUrl()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 17809
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17810
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$21000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 17813
    :cond_9
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hasHdpiListItemIconUrl()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 17814
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17815
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$21100(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiListItemIconUrl_:Ljava/lang/Object;

    .line 17818
    :cond_a
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->hasMdpiListItemIconUrl()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 17819
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17820
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$21200(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiListItemIconUrl_:Ljava/lang/Object;

    :cond_b
    move-object v0, p0

    .line 17823
    goto/16 :goto_0

    .line 17778
    :cond_c
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureCategoryIsMutable()V

    .line 17779
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 17788
    :cond_d
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureExtraIsMutable()V

    .line 17789
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 17798
    :cond_e
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureFlagIsMutable()V

    .line 17799
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->access$20800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method

.method public removeExtra(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18219
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureExtraIsMutable()V

    .line 18220
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 18222
    return-object p0
.end method

.method public setAction(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17940
    if-nez p1, :cond_0

    .line 17941
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17943
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17944
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->action_:Ljava/lang/Object;

    .line 17946
    return-object p0
.end method

.method public setActionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17956
    if-nez p1, :cond_0

    .line 17957
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17959
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17960
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->action_:Ljava/lang/Object;

    .line 17962
    return-object p0
.end method

.method public setCategory(ILjava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18095
    if-nez p2, :cond_0

    .line 18096
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18098
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureCategoryIsMutable()V

    .line 18099
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->category_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18101
    return-object p0
.end method

.method public setComponentName(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17887
    if-nez p1, :cond_0

    .line 17888
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17890
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17891
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->componentName_:Ljava/lang/Object;

    .line 17893
    return-object p0
.end method

.method public setComponentNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17903
    if-nez p1, :cond_0

    .line 17904
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17906
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17907
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->componentName_:Ljava/lang/Object;

    .line 17909
    return-object p0
.end method

.method public setData(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17993
    if-nez p1, :cond_0

    .line 17994
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17996
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 17997
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->data_:Ljava/lang/Object;

    .line 17999
    return-object p0
.end method

.method public setDataBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18009
    if-nez p1, :cond_0

    .line 18010
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18012
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18013
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->data_:Ljava/lang/Object;

    .line 18015
    return-object p0
.end method

.method public setDataType(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18046
    if-nez p1, :cond_0

    .line 18047
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18049
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18050
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->dataType_:Ljava/lang/Object;

    .line 18052
    return-object p0
.end method

.method public setDataTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18062
    if-nez p1, :cond_0

    .line 18063
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18065
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18066
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->dataType_:Ljava/lang/Object;

    .line 18068
    return-object p0
.end method

.method public setExtra(ILcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 18167
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureExtraIsMutable()V

    .line 18168
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18170
    return-object p0
.end method

.method public setExtra(ILcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18157
    if-nez p2, :cond_0

    .line 18158
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18160
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureExtraIsMutable()V

    .line 18161
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->extra_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18163
    return-object p0
.end method

.method public setFlag(II)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 18245
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->ensureFlagIsMutable()V

    .line 18246
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->flag_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18248
    return-object p0
.end method

.method public setHdpiCountdownIconUrl(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18298
    if-nez p1, :cond_0

    .line 18299
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18301
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18302
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 18304
    return-object p0
.end method

.method public setHdpiCountdownIconUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18314
    if-nez p1, :cond_0

    .line 18315
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18317
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18318
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 18320
    return-object p0
.end method

.method public setHdpiListItemIconUrl(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18404
    if-nez p1, :cond_0

    .line 18405
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18407
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18408
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiListItemIconUrl_:Ljava/lang/Object;

    .line 18410
    return-object p0
.end method

.method public setHdpiListItemIconUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18420
    if-nez p1, :cond_0

    .line 18421
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18423
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18424
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->hdpiListItemIconUrl_:Ljava/lang/Object;

    .line 18426
    return-object p0
.end method

.method public setMdpiCountdownIconUrl(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18351
    if-nez p1, :cond_0

    .line 18352
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18354
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18355
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 18357
    return-object p0
.end method

.method public setMdpiCountdownIconUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18367
    if-nez p1, :cond_0

    .line 18368
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18370
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18371
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiCountdownIconUrl_:Ljava/lang/Object;

    .line 18373
    return-object p0
.end method

.method public setMdpiListItemIconUrl(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18457
    if-nez p1, :cond_0

    .line 18458
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18460
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18461
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiListItemIconUrl_:Ljava/lang/Object;

    .line 18463
    return-object p0
.end method

.method public setMdpiListItemIconUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 18473
    if-nez p1, :cond_0

    .line 18474
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18476
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->bitField0_:I

    .line 18477
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mdpiListItemIconUrl_:Ljava/lang/Object;

    .line 18479
    return-object p0
.end method
