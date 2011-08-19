.class final Ljava/util/Hashtable$KeyIterator;
.super Ljava/util/Hashtable$HashIterator;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Ljava/util/Hashtable;)V
    .registers 2
    .parameter

    .prologue
    .line 771
    .local p0, this:Ljava/util/Hashtable$KeyIterator;,"Ljava/util/Hashtable<TK;TV;>.KeyIterator;"
    iput-object p1, p0, Ljava/util/Hashtable$KeyIterator;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0, p1}, Ljava/util/Hashtable$HashIterator;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 771
    .local p0, this:Ljava/util/Hashtable$KeyIterator;,"Ljava/util/Hashtable<TK;TV;>.KeyIterator;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable$KeyIterator;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 773
    .local p0, this:Ljava/util/Hashtable$KeyIterator;,"Ljava/util/Hashtable<TK;TV;>.KeyIterator;"
    invoke-virtual {p0}, Ljava/util/Hashtable$KeyIterator;->nextEntry()Ljava/util/Hashtable$HashtableEntry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    return-object v0
.end method
