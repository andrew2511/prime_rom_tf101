.class public abstract Ljava/security/PermissionCollection;
.super Ljava/lang/Object;
.source "PermissionCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5d5b252995e7f6d7L


# instance fields
.field private readOnly:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(Ljava/security/Permission;)V
.end method

.method public abstract elements()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract implies(Ljava/security/Permission;)Z
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Ljava/security/PermissionCollection;->readOnly:Z

    return v0
.end method

.method public setReadOnly()V
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/PermissionCollection;->readOnly:Z

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .prologue
    .line 100
    new-instance v2, Ljava/util/ArrayList;

    const/16 v8, 0x64

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .local v2, elist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/security/PermissionCollection;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 102
    .local v1, elenum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/security/Permission;>;"
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, superStr:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v7, v8, 0x5

    .line 104
    .local v7, totalLength:I
    if-eqz v1, :cond_30

    .line 105
    .end local p0
    :goto_17
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_30

    .line 106
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/Permission;

    invoke-virtual {p0}, Ljava/security/Permission;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, el:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    .line 108
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 111
    .end local v0           #el:Ljava/lang/String;
    :cond_30
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 112
    .local v3, esize:I
    mul-int/lit8 v8, v3, 0x4

    add-int/2addr v7, v8

    .line 113
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 115
    .local v5, result:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_47
    if-ge v4, v3, :cond_5f

    .line 116
    const-string v8, "\n "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 118
    :cond_5f
    const-string v8, "\n)\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method
