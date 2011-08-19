.class final Lcom/google/api/client/util/GenericData$EntryIterator;
.super Ljava/lang/Object;
.source "GenericData.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/GenericData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final fieldIterator:Lcom/google/api/client/util/ReflectionMap$EntryIterator;

.field private startedUnknown:Z

.field final synthetic this$0:Lcom/google/api/client/util/GenericData;

.field private final unknownIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/api/client/util/GenericData;)V
    .locals 2
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->this$0:Lcom/google/api/client/util/GenericData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Lcom/google/api/client/util/ReflectionMap$EntryIterator;

    invoke-static {p1}, Lcom/google/api/client/util/GenericData;->access$000(Lcom/google/api/client/util/GenericData;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/api/client/util/ReflectionMap$EntryIterator;-><init>(Lcom/google/api/client/util/ClassInfo;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->fieldIterator:Lcom/google/api/client/util/ReflectionMap$EntryIterator;

    .line 164
    iget-object v0, p1, Lcom/google/api/client/util/GenericData;->unknownFields:Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {v0}, Lcom/google/api/client/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->unknownIterator:Ljava/util/Iterator;

    .line 166
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->startedUnknown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->fieldIterator:Lcom/google/api/client/util/ReflectionMap$EntryIterator;

    invoke-virtual {v0}, Lcom/google/api/client/util/ReflectionMap$EntryIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->unknownIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/api/client/util/GenericData$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-boolean v1, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->startedUnknown:Z

    if-nez v1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->fieldIterator:Lcom/google/api/client/util/ReflectionMap$EntryIterator;

    .line 176
    .local v0, fieldIterator:Lcom/google/api/client/util/ReflectionMap$EntryIterator;
    invoke-virtual {v0}, Lcom/google/api/client/util/ReflectionMap$EntryIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/google/api/client/util/ReflectionMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v1

    .line 181
    .end local v0           #fieldIterator:Lcom/google/api/client/util/ReflectionMap$EntryIterator;
    .end local p0
    :goto_0
    return-object v1

    .line 179
    .restart local v0       #fieldIterator:Lcom/google/api/client/util/ReflectionMap$EntryIterator;
    .restart local p0
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->startedUnknown:Z

    .line 181
    .end local v0           #fieldIterator:Lcom/google/api/client/util/ReflectionMap$EntryIterator;
    :cond_1
    iget-object v1, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->unknownIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Map$Entry;

    move-object v1, p0

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->startedUnknown:Z

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->unknownIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
