.class public final Lcom/google/common/collect/Maps;
.super Ljava/lang/Object;
.source "Maps.java"


# static fields
.field static final standardJoiner:Lcom/google/common/base/Joiner$MapJoiner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1334
    sget-object v0, Lcom/google/common/collect/Collections2;->standardJoiner:Lcom/google/common/base/Joiner;

    const-string v1, "="

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/Maps;->standardJoiner:Lcom/google/common/base/Joiner$MapJoiner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 498
    .local p0, key:Ljava/lang/Object;,"TK;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Lcom/google/common/collect/ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
