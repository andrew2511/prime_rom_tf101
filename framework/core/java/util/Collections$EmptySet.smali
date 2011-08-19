.class final Ljava/util/Collections$EmptySet;
.super Ljava/util/AbstractSet;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptySet"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x15f5721db403cb28L


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collections$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/util/Collections$EmptySet;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 128
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 112
    new-instance v0, Ljava/util/Collections$EmptySet$1;

    invoke-direct {v0, p0}, Ljava/util/Collections$EmptySet$1;-><init>(Ljava/util/Collections$EmptySet;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method
