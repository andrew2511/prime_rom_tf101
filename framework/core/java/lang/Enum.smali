.class public abstract Ljava/lang/Enum;
.super Ljava/lang/Object;
.source "Enum.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3baff5e8284be7d5L


# instance fields
.field private final name:Ljava/lang/String;

.field private final ordinal:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "name"
    .parameter "ordinal"

    .prologue
    .line 43
    .local p0, this:Ljava/lang/Enum;,"Ljava/lang/Enum<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Ljava/lang/Enum;->name:Ljava/lang/String;

    .line 45
    iput p2, p0, Ljava/lang/Enum;->ordinal:I

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .registers 6
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, enumType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 163
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "enumType == null || name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Class;->getClassMembers()Ljava/lang/ClassMembers;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassMembers;->getEnumValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 167
    .local v0, result:Ljava/lang/Enum;,"TT;"
    if-nez v0, :cond_54

    .line 168
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_37

    .line 169
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not an enum type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a constant in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_54
    return-object v0
.end method


# virtual methods
.method protected final clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 110
    .local p0, this:Ljava/lang/Enum;,"Ljava/lang/Enum<TE;>;"
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "Enums may not be cloned"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final compareTo(Ljava/lang/Enum;)I
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, this:Ljava/lang/Enum;,"Ljava/lang/Enum<TE;>;"
    .local p1, o:Ljava/lang/Enum;,"TE;"
    iget v0, p0, Ljava/lang/Enum;->ordinal:I

    iget v1, p1, Ljava/lang/Enum;->ordinal:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    .local p0, this:Ljava/lang/Enum;,"Ljava/lang/Enum<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "other"

    .prologue
    .line 92
    .local p0, this:Ljava/lang/Enum;,"Ljava/lang/Enum<TE;>;"
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected final finalize()V
    .registers 1

    .prologue
    .line 185
    .local p0, this:Ljava/lang/Enum;,"Ljava/lang/Enum<TE;>;"
    return-void
.end method

.method public final getDeclaringClass()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, this:Ljava/lang/Enum;,"Ljava/lang/Enum<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 139
    .local v0, myClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 140
    .local v1, mySuperClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Enum;

    if-ne v2, v1, :cond_e

    move-object v2, v0

    .line 143
    :goto_d
    return-object v2

    :cond_e
    move-object v2, v1

    goto :goto_d
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 97
    .local p0, this:Ljava/lang/Enum;,"Ljava/lang/Enum<TE;>;"
    iget v0, p0, Ljava/lang/Enum;->ordinal:I

    iget-object v1, p0, Ljava/lang/Enum;->name:Ljava/lang/String;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    return v0

    :cond_9
    iget-object v1, p0, Ljava/lang/Enum;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7
.end method

.method public final name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    .local p0, this:Ljava/lang/Enum;,"Ljava/lang/Enum<TE;>;"
    iget-object v0, p0, Ljava/lang/Enum;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final ordinal()I
    .registers 2

    .prologue
    .line 66
    .local p0, this:Ljava/lang/Enum;,"Ljava/lang/Enum<TE;>;"
    iget v0, p0, Ljava/lang/Enum;->ordinal:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    .local p0, this:Ljava/lang/Enum;,"Ljava/lang/Enum<TE;>;"
    iget-object v0, p0, Ljava/lang/Enum;->name:Ljava/lang/String;

    return-object v0
.end method
