.class final Ljava/util/Collections$ReverseComparator;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReverseComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Ljava/util/Collections$ReverseComparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collections$ReverseComparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x64048af0534e4ad0L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 196
    new-instance v0, Ljava/util/Collections$ReverseComparator;

    invoke-direct {v0}, Ljava/util/Collections$ReverseComparator;-><init>()V

    sput-object v0, Ljava/util/Collections$ReverseComparator;->INSTANCE:Ljava/util/Collections$ReverseComparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 193
    .local p0, this:Ljava/util/Collections$ReverseComparator;,"Ljava/util/Collections$ReverseComparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Ljava/util/Collections$ReverseComparator;
    .registers 1

    .prologue
    .line 193
    sget-object v0, Ljava/util/Collections$ReverseComparator;->INSTANCE:Ljava/util/Collections$ReverseComparator;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 208
    .local p0, this:Ljava/util/Collections$ReverseComparator;,"Ljava/util/Collections$ReverseComparator<TT;>;"
    sget-object v0, Ljava/util/Collections$ReverseComparator;->INSTANCE:Ljava/util/Collections$ReverseComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, this:Ljava/util/Collections$ReverseComparator;,"Ljava/util/Collections$ReverseComparator<TT;>;"
    .local p1, o1:Ljava/lang/Object;,"TT;"
    .local p2, o2:Ljava/lang/Object;,"TT;"
    move-object v0, p2

    check-cast v0, Ljava/lang/Comparable;

    move-object v1, v0

    .line 204
    .local v1, c2:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TT;>;"
    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method
