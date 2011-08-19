.class final Ljava/util/HashMap$EntryIterator;
.super Ljava/util/HashMap$HashIterator;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Ljava/util/HashMap;)V
    .registers 2
    .parameter

    .prologue
    .line 831
    .local p0, this:Ljava/util/HashMap$EntryIterator;,"Ljava/util/HashMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Ljava/util/HashMap$EntryIterator;->this$0:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Ljava/util/HashMap$HashIterator;-><init>(Ljava/util/HashMap;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 831
    .local p0, this:Ljava/util/HashMap$EntryIterator;,"Ljava/util/HashMap<TK;TV;>.EntryIterator;"
    invoke-direct {p0, p1}, Ljava/util/HashMap$EntryIterator;-><init>(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 831
    .local p0, this:Ljava/util/HashMap$EntryIterator;,"Ljava/util/HashMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/HashMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 833
    .local p0, this:Ljava/util/HashMap$EntryIterator;,"Ljava/util/HashMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/HashMap$EntryIterator;->nextEntry()Ljava/util/HashMap$HashMapEntry;

    move-result-object v0

    return-object v0
.end method
