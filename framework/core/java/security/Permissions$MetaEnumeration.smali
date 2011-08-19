.class final Ljava/security/Permissions$MetaEnumeration;
.super Ljava/lang/Object;
.source "Permissions.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Permissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MetaEnumeration"
.end annotation


# instance fields
.field private current:Ljava/util/Enumeration;

.field private pcIter:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 3
    .parameter "outer"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Ljava/security/Permissions$MetaEnumeration;->pcIter:Ljava/util/Iterator;

    .line 124
    invoke-direct {p0}, Ljava/security/Permissions$MetaEnumeration;->getNextEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Permissions$MetaEnumeration;->current:Ljava/util/Enumeration;

    .line 125
    return-void
.end method

.method private getNextEnumeration()Ljava/util/Enumeration;
    .registers 3

    .prologue
    .line 128
    :cond_0
    iget-object v1, p0, Ljava/security/Permissions$MetaEnumeration;->pcIter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 129
    iget-object v1, p0, Ljava/security/Permissions$MetaEnumeration;->pcIter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/PermissionCollection;

    invoke-virtual {v1}, Ljava/security/PermissionCollection;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 131
    .local v0, en:Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 135
    .end local v0           #en:Ljava/util/Enumeration;
    :goto_1b
    return-object v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Ljava/security/Permissions$MetaEnumeration;->current:Ljava/util/Enumeration;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 149
    iget-object v1, p0, Ljava/security/Permissions$MetaEnumeration;->current:Ljava/util/Enumeration;

    if-eqz v1, :cond_19

    .line 151
    iget-object v1, p0, Ljava/security/Permissions$MetaEnumeration;->current:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, next:Ljava/lang/Object;
    iget-object v1, p0, Ljava/security/Permissions$MetaEnumeration;->current:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_18

    .line 153
    invoke-direct {p0}, Ljava/security/Permissions$MetaEnumeration;->getNextEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    iput-object v1, p0, Ljava/security/Permissions$MetaEnumeration;->current:Ljava/util/Enumeration;

    .line 156
    :cond_18
    return-object v0

    .line 158
    .end local v0           #next:Ljava/lang/Object;
    :cond_19
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
