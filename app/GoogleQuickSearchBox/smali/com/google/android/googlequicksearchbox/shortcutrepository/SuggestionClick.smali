.class Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;
.super Ljava/lang/Object;
.source "SuggestionClick.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClickTime:J

.field private final mQuery:Ljava/lang/String;

.field private final mSuggestionIntent:Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick$1;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick$1;-><init>()V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;)V
    .locals 0
    .parameter "query"
    .parameter "clickTime"
    .parameter "suggestionIntent"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;->mQuery:Ljava/lang/String;

    .line 33
    iput-wide p2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;->mClickTime:J

    .line 34
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;->mSuggestionIntent:Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;

    .line 35
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;)I
    .locals 1
    .parameter "another"

    .prologue
    .line 55
    sget-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;->COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;->compareTo(Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "another"

    .prologue
    const/4 v1, 0x0

    .line 60
    instance-of v0, p1, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;

    if-nez v0, :cond_0

    move v0, v1

    .line 63
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    check-cast p1, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;->compareTo(Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getClickTime()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;->mClickTime:J

    return-wide v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionIntent()Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;->mSuggestionIntent:Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;->getQuery()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;->getClickTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionClick;->getSuggestionIntent()Lcom/google/android/googlequicksearchbox/shortcutrepository/SuggestionIntent;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
