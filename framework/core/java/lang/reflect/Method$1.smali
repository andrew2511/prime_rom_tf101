.class final Ljava/lang/reflect/Method$1;
.super Ljava/lang/Object;
.source "Method.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    check-cast p1, Ljava/lang/reflect/Method;

    .end local p1
    check-cast p2, Ljava/lang/reflect/Method;

    .end local p2
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method$1;->compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I
    .registers 10
    .parameter "a"
    .parameter "b"

    .prologue
    .line 56
    #getter for: Ljava/lang/reflect/Method;->name:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/reflect/Method;->access$000(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v5

    #getter for: Ljava/lang/reflect/Method;->name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/reflect/Method;->access$000(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 57
    .local v2, comparison:I
    if-eqz v2, :cond_10

    move v5, v2

    .line 71
    :goto_f
    return v5

    .line 61
    :cond_10
    #getter for: Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;
    invoke-static {p1}, Ljava/lang/reflect/Method;->access$100(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v0

    .line 62
    .local v0, aParameters:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    #getter for: Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;
    invoke-static {p2}, Ljava/lang/reflect/Method;->access$100(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v1

    .line 63
    .local v1, bParameters:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v5, v0

    array-length v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 64
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1f
    if-ge v3, v4, :cond_38

    .line 65
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 66
    if-eqz v2, :cond_35

    move v5, v2

    .line 67
    goto :goto_f

    .line 64
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 71
    :cond_38
    array-length v5, v0

    array-length v6, v1

    sub-int/2addr v5, v6

    goto :goto_f
.end method
