.class public Lgov/nist/javax/sip/header/SIPObjectList;
.super Lgov/nist/core/GenericObjectList;
.source "SIPObjectList.java"


# static fields
.field private static final serialVersionUID:J = -0x29d7fb4297970e29L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lgov/nist/core/GenericObjectList;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "lname"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lgov/nist/core/GenericObjectList;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public concatenate(Lgov/nist/javax/sip/header/SIPObjectList;)V
    .registers 2
    .parameter "otherList"

    .prologue
    .line 103
    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->concatenate(Lgov/nist/core/GenericObjectList;)V

    .line 104
    return-void
.end method

.method public concatenate(Lgov/nist/javax/sip/header/SIPObjectList;Z)V
    .registers 3
    .parameter "otherList"
    .parameter "topFlag"

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lgov/nist/core/GenericObjectList;->concatenate(Lgov/nist/core/GenericObjectList;Z)V

    .line 113
    return-void
.end method

.method public debugDump(I)Ljava/lang/String;
    .registers 3
    .parameter "indent"

    .prologue
    .line 145
    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public first()Lgov/nist/core/GenericObject;
    .registers 1

    .prologue
    .line 120
    invoke-super {p0}, Lgov/nist/core/GenericObjectList;->first()Lgov/nist/core/GenericObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/header/SIPObject;

    return-object p0
.end method

.method public mergeObjects(Lgov/nist/core/GenericObjectList;)V
    .registers 7
    .parameter "mergeList"

    .prologue
    .line 87
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 88
    .local v1, it1:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/core/GenericObject;>;"
    invoke-virtual {p1}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 89
    .local v2, it2:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/core/GenericObject;>;"
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/core/GenericObject;

    .line 91
    .local v3, outerObj:Lgov/nist/core/GenericObject;
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 93
    .local v0, innerObj:Ljava/lang/Object;
    invoke-virtual {v3, v0}, Lgov/nist/core/GenericObject;->merge(Ljava/lang/Object;)V

    goto :goto_14

    .line 96
    .end local v0           #innerObj:Ljava/lang/Object;
    .end local v3           #outerObj:Lgov/nist/core/GenericObject;
    :cond_22
    return-void
.end method

.method public next()Lgov/nist/core/GenericObject;
    .registers 1

    .prologue
    .line 130
    invoke-super {p0}, Lgov/nist/core/GenericObjectList;->next()Lgov/nist/core/GenericObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/header/SIPObject;

    return-object p0
.end method
