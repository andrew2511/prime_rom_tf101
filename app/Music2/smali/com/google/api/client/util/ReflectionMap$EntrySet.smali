.class final Lcom/google/api/client/util/ReflectionMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "ReflectionMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/ReflectionMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/client/util/ReflectionMap;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/ReflectionMap;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/api/client/util/ReflectionMap$EntrySet;->this$0:Lcom/google/api/client/util/ReflectionMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/google/api/client/util/ReflectionMap$EntryIterator;

    iget-object v1, p0, Lcom/google/api/client/util/ReflectionMap$EntrySet;->this$0:Lcom/google/api/client/util/ReflectionMap;

    invoke-static {v1}, Lcom/google/api/client/util/ReflectionMap;->access$000(Lcom/google/api/client/util/ReflectionMap;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/util/ReflectionMap$EntrySet;->this$0:Lcom/google/api/client/util/ReflectionMap;

    invoke-static {v2}, Lcom/google/api/client/util/ReflectionMap;->access$100(Lcom/google/api/client/util/ReflectionMap;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/ReflectionMap$EntryIterator;-><init>(Lcom/google/api/client/util/ClassInfo;Ljava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/api/client/util/ReflectionMap$EntrySet;->this$0:Lcom/google/api/client/util/ReflectionMap;

    invoke-static {v0}, Lcom/google/api/client/util/ReflectionMap;->access$200(Lcom/google/api/client/util/ReflectionMap;)I

    move-result v0

    return v0
.end method
