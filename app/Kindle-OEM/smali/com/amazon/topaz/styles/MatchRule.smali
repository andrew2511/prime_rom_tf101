.class public final Lcom/amazon/topaz/styles/MatchRule;
.super Lcom/amazon/topaz/styles/AbstractMatchRule;
.source "MatchRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/styles/MatchRule$1;,
        Lcom/amazon/topaz/styles/MatchRule$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/amazon/topaz/styles/MatchRule; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/amazon/topaz/styles/MatchRule;

    invoke-direct {v0}, Lcom/amazon/topaz/styles/MatchRule;-><init>()V

    sput-object v0, Lcom/amazon/topaz/styles/MatchRule;->EMPTY:Lcom/amazon/topaz/styles/MatchRule;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/amazon/topaz/styles/AbstractMatchRule;-><init>()V

    .line 45
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/styles/MatchRule;->entries:Ljava/util/Map;

    .line 46
    return-void
.end method

.method private constructor <init>(Lcom/amazon/topaz/styles/MatchRule$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/amazon/topaz/styles/AbstractMatchRule;-><init>()V

    .line 54
    invoke-static {p1}, Lcom/amazon/topaz/styles/MatchRule$Builder;->access$000(Lcom/amazon/topaz/styles/MatchRule$Builder;)Ljava/util/TreeMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/styles/MatchRule;->entries:Ljava/util/Map;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/topaz/styles/MatchRule$Builder;Lcom/amazon/topaz/styles/MatchRule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/topaz/styles/MatchRule;-><init>(Lcom/amazon/topaz/styles/MatchRule$Builder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/amazon/topaz/styles/AbstractMatchRule;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
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
    .line 63
    iget-object v0, p0, Lcom/amazon/topaz/styles/MatchRule;->entries:Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic getKey(Lcom/amazon/topaz/styles/AbstractMatchRule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/amazon/topaz/styles/AbstractMatchRule;->getKey(Lcom/amazon/topaz/styles/AbstractMatchRule;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/amazon/topaz/styles/AbstractMatchRule;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/amazon/topaz/styles/AbstractMatchRule;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic match(Lcom/amazon/topaz/styles/AbstractMatchRule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/amazon/topaz/styles/AbstractMatchRule;->match(Lcom/amazon/topaz/styles/AbstractMatchRule;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/amazon/topaz/styles/AbstractMatchRule;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
