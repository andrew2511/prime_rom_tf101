.class final Ljava/security/AllPermissionCollection$SingletonEnumeration;
.super Ljava/lang/Object;
.source "AllPermissionCollection.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/AllPermissionCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingletonEnumeration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Ljava/security/AllPermissionCollection$SingletonEnumeration;,"Ljava/security/AllPermissionCollection$SingletonEnumeration<TE;>;"
    .local p1, single:Ljava/lang/Object;,"TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Ljava/security/AllPermissionCollection$SingletonEnumeration;->element:Ljava/lang/Object;

    .line 80
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 86
    .local p0, this:Ljava/security/AllPermissionCollection$SingletonEnumeration;,"Ljava/security/AllPermissionCollection$SingletonEnumeration<TE;>;"
    iget-object v0, p0, Ljava/security/AllPermissionCollection$SingletonEnumeration;->element:Ljava/lang/Object;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, this:Ljava/security/AllPermissionCollection$SingletonEnumeration;,"Ljava/security/AllPermissionCollection$SingletonEnumeration<TE;>;"
    iget-object v1, p0, Ljava/security/AllPermissionCollection$SingletonEnumeration;->element:Ljava/lang/Object;

    if-nez v1, :cond_a

    .line 94
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 96
    :cond_a
    iget-object v0, p0, Ljava/security/AllPermissionCollection$SingletonEnumeration;->element:Ljava/lang/Object;

    .line 97
    .local v0, last:Ljava/lang/Object;,"TE;"
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/AllPermissionCollection$SingletonEnumeration;->element:Ljava/lang/Object;

    .line 98
    return-object v0
.end method
