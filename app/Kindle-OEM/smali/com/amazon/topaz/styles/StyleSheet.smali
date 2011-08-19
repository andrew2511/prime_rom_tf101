.class public final Lcom/amazon/topaz/styles/StyleSheet;
.super Lcom/amazon/topaz/styles/AbstractStyleSheet;
.source "StyleSheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/styles/StyleSheet$1;,
        Lcom/amazon/topaz/styles/StyleSheet$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/amazon/topaz/styles/StyleSheet;


# instance fields
.field private final children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/amazon/topaz/styles/AddSpec;",
            "Lcom/amazon/topaz/styles/StyleSheet;",
            ">;"
        }
    .end annotation
.end field

.field private final rule:Lcom/amazon/topaz/styles/MatchRule;

.field private final style:Lcom/amazon/topaz/styles/Style;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/amazon/topaz/styles/StyleSheet;

    invoke-direct {v0}, Lcom/amazon/topaz/styles/StyleSheet;-><init>()V

    sput-object v0, Lcom/amazon/topaz/styles/StyleSheet;->EMPTY:Lcom/amazon/topaz/styles/StyleSheet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;-><init>()V

    .line 57
    sget-object v0, Lcom/amazon/topaz/styles/MatchRule;->EMPTY:Lcom/amazon/topaz/styles/MatchRule;

    iput-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet;->rule:Lcom/amazon/topaz/styles/MatchRule;

    .line 58
    sget-object v0, Lcom/amazon/topaz/styles/Style;->EMPTY:Lcom/amazon/topaz/styles/Style;

    iput-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet;->style:Lcom/amazon/topaz/styles/Style;

    .line 59
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet;->children:Ljava/util/Map;

    .line 60
    return-void
.end method

.method private constructor <init>(Lcom/amazon/topaz/styles/StyleSheet$Builder;)V
    .locals 4
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;-><init>()V

    .line 68
    invoke-static {p1}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->access$000(Lcom/amazon/topaz/styles/StyleSheet$Builder;)Lcom/amazon/topaz/styles/MatchRule$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/styles/MatchRule$Builder;->build()Lcom/amazon/topaz/styles/MatchRule;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet;->rule:Lcom/amazon/topaz/styles/MatchRule;

    .line 69
    invoke-static {p1}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->access$100(Lcom/amazon/topaz/styles/StyleSheet$Builder;)Lcom/amazon/topaz/styles/Style$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/styles/Style$Builder;->build()Lcom/amazon/topaz/styles/Style;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet;->style:Lcom/amazon/topaz/styles/Style;

    .line 71
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->access$200(Lcom/amazon/topaz/styles/StyleSheet$Builder;)Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 74
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/styles/AddSpec;

    .line 77
    invoke-static {p1}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->access$200(Lcom/amazon/topaz/styles/StyleSheet$Builder;)Ljava/util/TreeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/styles/StyleSheet$Builder;

    .line 79
    invoke-virtual {v1}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->build()Lcom/amazon/topaz/styles/StyleSheet;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet;->children:Ljava/util/Map;

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/topaz/styles/StyleSheet$Builder;Lcom/amazon/topaz/styles/StyleSheet$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/topaz/styles/StyleSheet;-><init>(Lcom/amazon/topaz/styles/StyleSheet$Builder;)V

    return-void
.end method


# virtual methods
.method public find(Lcom/amazon/topaz/styles/MatchRule;)Lcom/amazon/topaz/styles/StyleSheet;
    .locals 0
    .parameter "test"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/amazon/topaz/styles/StyleSheet;->findInternal(Lcom/amazon/topaz/styles/AbstractMatchRule;)Lcom/amazon/topaz/styles/AbstractStyleSheet;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/topaz/styles/StyleSheet;

    return-object p0
.end method

.method protected getChildren()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/amazon/topaz/styles/AddSpec;",
            "Lcom/amazon/topaz/styles/StyleSheet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet;->children:Ljava/util/Map;

    return-object v0
.end method

.method protected getRule()Lcom/amazon/topaz/styles/AbstractMatchRule;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet;->rule:Lcom/amazon/topaz/styles/MatchRule;

    return-object v0
.end method

.method public bridge synthetic getRuleKeys()Ljava/util/Set;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getRuleKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getStyle()Lcom/amazon/topaz/styles/AbstractStyle;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazon/topaz/styles/StyleSheet;->style:Lcom/amazon/topaz/styles/Style;

    return-object v0
.end method

.method public bridge synthetic getStyle(Lcom/amazon/topaz/styles/AbstractMatchRule;)Lcom/amazon/topaz/styles/Style;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->getStyle(Lcom/amazon/topaz/styles/AbstractMatchRule;)Lcom/amazon/topaz/styles/Style;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/amazon/topaz/styles/AbstractStyleSheet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
