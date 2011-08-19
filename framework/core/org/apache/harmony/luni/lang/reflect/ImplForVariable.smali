.class public final Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;
.super Ljava/lang/Object;
.source "ImplForVariable.java"

# interfaces
.implements Ljava/lang/reflect/TypeVariable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljava/lang/reflect/GenericDeclaration;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/TypeVariable",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private bounds:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

.field private final declOfVarUser:Ljava/lang/reflect/GenericDeclaration;

.field private formalVar:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/lang/reflect/ImplForVariable",
            "<TD;>;"
        }
    .end annotation
.end field

.field private genericDeclaration:Ljava/lang/reflect/GenericDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;,"Lorg/apache/harmony/luni/lang/reflect/ImplForVariable<TD;>;"
    .local p1, genericDecl:Ljava/lang/reflect/GenericDeclaration;,"TD;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->name:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->declOfVarUser:Ljava/lang/reflect/GenericDeclaration;

    .line 73
    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)V
    .registers 5
    .parameter
    .parameter "name"
    .parameter "bounds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;,"Lorg/apache/harmony/luni/lang/reflect/ImplForVariable<TD;>;"
    .local p1, genericDecl:Ljava/lang/reflect/GenericDeclaration;,"TD;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    .line 59
    iput-object p2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->name:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->bounds:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    .line 61
    iput-object p0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->formalVar:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->declOfVarUser:Ljava/lang/reflect/GenericDeclaration;

    .line 63
    return-void
.end method

.method static findFormalVar(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)Ljava/lang/reflect/TypeVariable;
    .registers 8
    .parameter "layer"
    .parameter "name"

    .prologue
    .line 76
    invoke-interface {p0}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 77
    .local v1, formalVars:[Ljava/lang/reflect/TypeVariable;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/reflect/TypeVariable;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_7
    if-ge v2, v3, :cond_1a

    aget-object v4, v0, v2

    .line 78
    .local v4, var:Ljava/lang/reflect/TypeVariable;
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    move-object v5, v4

    .line 83
    .end local v4           #var:Ljava/lang/reflect/TypeVariable;
    :goto_16
    return-object v5

    .line 77
    .restart local v4       #var:Ljava/lang/reflect/TypeVariable;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 83
    .end local v4           #var:Ljava/lang/reflect/TypeVariable;
    :cond_1a
    const/4 v5, 0x0

    goto :goto_16
.end method

.method static nextLayer(Ljava/lang/reflect/GenericDeclaration;)Ljava/lang/reflect/GenericDeclaration;
    .registers 6
    .parameter "decl"

    .prologue
    .line 87
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_1d

    .line 89
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    .line 90
    .local v1, cl:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object p0

    .line 91
    if-eqz p0, :cond_10

    move-object v2, p0

    .line 102
    .end local v1           #cl:Ljava/lang/Class;
    .end local p0
    :goto_f
    return-object v2

    .line 94
    .restart local v1       #cl:Ljava/lang/Class;
    .restart local p0
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 95
    if-eqz p0, :cond_18

    move-object v2, p0

    .line 96
    goto :goto_f

    .line 98
    :cond_18
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_f

    .line 99
    .end local v1           #cl:Ljava/lang/Class;
    :cond_1d
    instance-of v2, p0, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_28

    .line 100
    check-cast p0, Ljava/lang/reflect/Method;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_f

    .line 101
    .restart local p0
    :cond_28
    instance-of v2, p0, Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_33

    .line 102
    check-cast p0, Ljava/lang/reflect/Constructor;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_f

    .line 104
    .restart local p0
    :cond_33
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown GenericDeclaration2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    .local p0, this:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;,"Lorg/apache/harmony/luni/lang/reflect/ImplForVariable<TD;>;"
    const/4 v4, 0x0

    .line 37
    instance-of v2, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_7

    move v2, v4

    .line 41
    :goto_6
    return v2

    .line 40
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    move-object v1, v0

    .line 41
    .local v1, that:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    goto :goto_6

    :cond_29
    move v2, v4

    goto :goto_6
.end method

.method public getBounds()[Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 129
    .local p0, this:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;,"Lorg/apache/harmony/luni/lang/reflect/ImplForVariable<TD;>;"
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->resolve()V

    .line 130
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->bounds:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;,"Lorg/apache/harmony/luni/lang/reflect/ImplForVariable<TD;>;"
    check-cast p0, [Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, this:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;,"Lorg/apache/harmony/luni/lang/reflect/ImplForVariable<TD;>;"
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->resolve()V

    .line 135
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    .local p0, this:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;,"Lorg/apache/harmony/luni/lang/reflect/ImplForVariable<TD;>;"
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 48
    .local p0, this:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;,"Lorg/apache/harmony/luni/lang/reflect/ImplForVariable<TD;>;"
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method resolve()V
    .registers 4

    .prologue
    .line 109
    .local p0, this:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;,"Lorg/apache/harmony/luni/lang/reflect/ImplForVariable<TD;>;"
    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->formalVar:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    if-nez v2, :cond_1f

    .line 110
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->declOfVarUser:Ljava/lang/reflect/GenericDeclaration;

    .line 111
    .local v0, curLayer:Ljava/lang/reflect/GenericDeclaration;
    const/4 v1, 0x0

    .line 113
    .local v1, var:Ljava/lang/reflect/TypeVariable;
    :cond_7
    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->findFormalVar(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_20

    .line 122
    :goto_f
    check-cast v1, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    .end local v1           #var:Ljava/lang/reflect/TypeVariable;
    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->formalVar:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    .line 123
    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->formalVar:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    iget-object v2, v2, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    .line 124
    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->formalVar:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    iget-object v2, v2, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->bounds:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->bounds:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    .line 126
    .end local v0           #curLayer:Ljava/lang/reflect/GenericDeclaration;
    :cond_1f
    return-void

    .line 116
    .restart local v0       #curLayer:Ljava/lang/reflect/GenericDeclaration;
    .restart local v1       #var:Ljava/lang/reflect/TypeVariable;
    :cond_20
    invoke-static {v0}, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->nextLayer(Ljava/lang/reflect/GenericDeclaration;)Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 117
    if-nez v0, :cond_7

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    .local p0, this:Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;,"Lorg/apache/harmony/luni/lang/reflect/ImplForVariable<TD;>;"
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;->name:Ljava/lang/String;

    return-object v0
.end method
