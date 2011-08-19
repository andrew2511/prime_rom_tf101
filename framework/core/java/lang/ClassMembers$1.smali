.class final Ljava/lang/ClassMembers$1;
.super Llibcore/util/BasicLruCache;
.source "ClassMembers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ClassMembers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llibcore/util/BasicLruCache",
        "<",
        "Ljava/lang/Class",
        "<*>;",
        "Ljava/lang/ClassMembers",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Llibcore/util/BasicLruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/Class;)Ljava/lang/ClassMembers;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/ClassMembers",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, key:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/ClassMembers;

    invoke-direct {v0, p1}, Ljava/lang/ClassMembers;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 46
    check-cast p1, Ljava/lang/Class;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/ClassMembers$1;->create(Ljava/lang/Class;)Ljava/lang/ClassMembers;

    move-result-object v0

    return-object v0
.end method
