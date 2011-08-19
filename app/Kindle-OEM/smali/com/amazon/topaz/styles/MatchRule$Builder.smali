.class public final Lcom/amazon/topaz/styles/MatchRule$Builder;
.super Lcom/amazon/topaz/styles/AbstractMatchRule;
.source "MatchRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/styles/MatchRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private entries:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/amazon/topaz/styles/AbstractMatchRule;-><init>()V

    .line 81
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/styles/MatchRule$Builder;->entries:Ljava/util/TreeMap;

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/styles/AbstractMatchRule;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/amazon/topaz/styles/MatchRule$Builder;-><init>()V

    .line 92
    iget-object v0, p0, Lcom/amazon/topaz/styles/MatchRule$Builder;->entries:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/amazon/topaz/styles/AbstractMatchRule;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/topaz/styles/MatchRule$Builder;)Ljava/util/TreeMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amazon/topaz/styles/MatchRule$Builder;->entries:Ljava/util/TreeMap;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/amazon/topaz/styles/MatchRule;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v1, p0, Lcom/amazon/topaz/styles/MatchRule$Builder;->entries:Ljava/util/TreeMap;

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 133
    :cond_0
    new-instance v0, Lcom/amazon/topaz/styles/MatchRule;

    invoke-direct {v0, p0, v2}, Lcom/amazon/topaz/styles/MatchRule;-><init>(Lcom/amazon/topaz/styles/MatchRule$Builder;Lcom/amazon/topaz/styles/MatchRule$1;)V

    .line 134
    .local v0, retval:Lcom/amazon/topaz/styles/MatchRule;
    iput-object v2, p0, Lcom/amazon/topaz/styles/MatchRule$Builder;->entries:Ljava/util/TreeMap;

    .line 136
    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/amazon/topaz/styles/AbstractMatchRule;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/amazon/topaz/styles/AbstractMatchRule;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amazon/topaz/styles/MatchRule$Builder;->entries:Ljava/util/TreeMap;

    return-object v0
.end method

.method public bridge synthetic getKey(Lcom/amazon/topaz/styles/AbstractMatchRule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/amazon/topaz/styles/AbstractMatchRule;->getKey(Lcom/amazon/topaz/styles/AbstractMatchRule;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/amazon/topaz/styles/AbstractMatchRule;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/amazon/topaz/styles/AbstractMatchRule;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic match(Lcom/amazon/topaz/styles/AbstractMatchRule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/amazon/topaz/styles/AbstractMatchRule;->match(Lcom/amazon/topaz/styles/AbstractMatchRule;)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazon/topaz/styles/MatchRule$Builder;->entries:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/styles/MatchRule$Builder;->entries:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/amazon/topaz/styles/AbstractMatchRule;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
