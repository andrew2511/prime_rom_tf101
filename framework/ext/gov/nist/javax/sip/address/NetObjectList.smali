.class public Lgov/nist/javax/sip/address/NetObjectList;
.super Lgov/nist/core/GenericObjectList;
.source "NetObjectList.java"


# static fields
.field private static final serialVersionUID:J = -0x1589083c1870e7afL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Lgov/nist/core/GenericObjectList;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "lname"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lgov/nist/core/GenericObjectList;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
    .parameter "lname"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, cname:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lgov/nist/core/GenericObjectList;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 74
    return-void
.end method


# virtual methods
.method public add(Lgov/nist/javax/sip/address/NetObject;)V
    .registers 2
    .parameter "obj"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public concatenate(Lgov/nist/javax/sip/address/NetObjectList;)V
    .registers 2
    .parameter "net_obj_list"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->concatenate(Lgov/nist/core/GenericObjectList;)V

    .line 98
    return-void
.end method

.method public debugDump(I)Ljava/lang/String;
    .registers 3
    .parameter "indent"

    .prologue
    .line 141
    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public first()Lgov/nist/core/GenericObject;
    .registers 1

    .prologue
    .line 106
    invoke-super {p0}, Lgov/nist/core/GenericObjectList;->first()Lgov/nist/core/GenericObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/address/NetObject;

    return-object p0
.end method

.method public next()Lgov/nist/core/GenericObject;
    .registers 1

    .prologue
    .line 115
    invoke-super {p0}, Lgov/nist/core/GenericObjectList;->next()Lgov/nist/core/GenericObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/address/NetObject;

    return-object p0
.end method

.method public next(Ljava/util/ListIterator;)Lgov/nist/core/GenericObject;
    .registers 2
    .parameter "li"

    .prologue
    .line 123
    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->next(Ljava/util/ListIterator;)Lgov/nist/core/GenericObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/address/NetObject;

    return-object p0
.end method

.method public setMyClass(Ljava/lang/Class;)V
    .registers 2
    .parameter "cl"

    .prologue
    .line 132
    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->setMyClass(Ljava/lang/Class;)V

    .line 133
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/NetObjectList;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
