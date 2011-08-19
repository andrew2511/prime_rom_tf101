.class Ljava/lang/ClassMembers$EnumComparator;
.super Ljava/lang/Object;
.source "ClassMembers.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ClassMembers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Enum",
        "<*>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ClassMembers$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/ClassMembers$EnumComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Enum;Ljava/lang/Enum;)I
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;",
            "Ljava/lang/Enum",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 571
    .local p1, e1:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    .local p2, e2:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 569
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    check-cast p2, Ljava/lang/Enum;

    .end local p2
    invoke-virtual {p0, p1, p2}, Ljava/lang/ClassMembers$EnumComparator;->compare(Ljava/lang/Enum;Ljava/lang/Enum;)I

    move-result v0

    return v0
.end method
