.class public final Ljavax/security/auth/Subject;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/security/auth/Subject$SecureSet;
    }
.end annotation


# static fields
.field private static final _AS:Ljavax/security/auth/AuthPermission; = null

.field private static final _AS_PRIVILEGED:Ljavax/security/auth/AuthPermission; = null

.field private static final _PRINCIPALS:Ljavax/security/auth/AuthPermission; = null

.field private static final _PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission; = null

.field private static final _PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission; = null

.field private static final _READ_ONLY:Ljavax/security/auth/AuthPermission; = null

.field private static final _SUBJECT:Ljavax/security/auth/AuthPermission; = null

.field private static final serialVersionUID:J = -0x734dcd6cffcc0598L


# instance fields
.field private final principals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation
.end field

.field private transient privateCredentials:Ljavax/security/auth/Subject$SecureSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/security/auth/Subject$SecureSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient publicCredentials:Ljavax/security/auth/Subject$SecureSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/security/auth/Subject$SecureSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private readOnly:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 57
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "doAs"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_AS:Ljavax/security/auth/AuthPermission;

    .line 59
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "doAsPrivileged"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_AS_PRIVILEGED:Ljavax/security/auth/AuthPermission;

    .line 62
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "getSubject"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_SUBJECT:Ljavax/security/auth/AuthPermission;

    .line 65
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "modifyPrincipals"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_PRINCIPALS:Ljavax/security/auth/AuthPermission;

    .line 68
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "modifyPrivateCredentials"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    .line 71
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "modifyPublicCredentials"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    .line 74
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "setReadOnly"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_READ_ONLY:Ljavax/security/auth/AuthPermission;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PRINCIPALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    .line 94
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    .line 95
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    .line 98
    return-void
.end method

.method public constructor <init>(ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .registers 7
    .parameter "readOnly"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<+",
            "Ljava/security/Principal;",
            ">;",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/util/Set",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p2, subjPrincipals:Ljava/util/Set;,"Ljava/util/Set<+Ljava/security/Principal;>;"
    .local p3, pubCredentials:Ljava/util/Set;,"Ljava/util/Set<*>;"
    .local p4, privCredentials:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    if-nez p4, :cond_f

    .line 121
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 124
    :cond_f
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PRINCIPALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1, p2}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;Ljava/util/Collection;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    .line 125
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1, p3}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;Ljava/util/Collection;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    .line 126
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1, p4}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;Ljava/util/Collection;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    .line 128
    iput-boolean p1, p0, Ljavax/security/auth/Subject;->readOnly:Z

    .line 129
    return-void
.end method

.method static synthetic access$000()Ljavax/security/auth/AuthPermission;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Ljavax/security/auth/Subject;->_PRINCIPALS:Ljavax/security/auth/AuthPermission;

    return-object v0
.end method

.method static synthetic access$100(Ljavax/security/auth/Subject;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Ljavax/security/auth/Subject;->checkState()V

    return-void
.end method

.method static synthetic access$200(Ljava/security/Permission;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-static {p0}, Ljavax/security/auth/Subject;->checkPermission(Ljava/security/Permission;)V

    return-void
.end method

.method static synthetic access$300()Ljavax/security/auth/AuthPermission;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    return-object v0
.end method

.method static synthetic access$400(Ljavax/security/auth/Subject;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500()Ljavax/security/auth/AuthPermission;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    return-object v0
.end method

.method private static checkPermission(Ljava/security/Permission;)V
    .registers 2
    .parameter "p"

    .prologue
    .line 504
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 505
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 506
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 508
    :cond_9
    return-void
.end method

.method private checkState()V
    .registers 3

    .prologue
    .line 511
    iget-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    if-eqz v0, :cond_c

    .line 512
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Set is read-only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_c
    return-void
.end method

.method public static doAs(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .registers 3
    .parameter "subject"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedAction",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, action:Ljava/security/PrivilegedAction;,"Ljava/security/PrivilegedAction<TT;>;"
    sget-object v0, Ljavax/security/auth/Subject;->_AS:Ljavax/security/auth/AuthPermission;

    invoke-static {v0}, Ljavax/security/auth/Subject;->checkPermission(Ljava/security/Permission;)V

    .line 146
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljavax/security/auth/Subject;->doAs_PrivilegedAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static doAs(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    .registers 3
    .parameter "subject"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .prologue
    .line 221
    .local p1, action:Ljava/security/PrivilegedExceptionAction;,"Ljava/security/PrivilegedExceptionAction<TT;>;"
    sget-object v0, Ljavax/security/auth/Subject;->_AS:Ljavax/security/auth/AuthPermission;

    invoke-static {v0}, Ljavax/security/auth/Subject;->checkPermission(Ljava/security/Permission;)V

    .line 223
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljavax/security/auth/Subject;->doAs_PrivilegedExceptionAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static doAsPrivileged(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .registers 5
    .parameter "subject"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, action:Ljava/security/PrivilegedAction;,"Ljava/security/PrivilegedAction<TT;>;"
    sget-object v0, Ljavax/security/auth/Subject;->_AS_PRIVILEGED:Ljavax/security/auth/AuthPermission;

    invoke-static {v0}, Ljavax/security/auth/Subject;->checkPermission(Ljava/security/Permission;)V

    .line 170
    if-nez p2, :cond_14

    .line 171
    new-instance v0, Ljava/security/AccessControlContext;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/security/ProtectionDomain;

    invoke-direct {v0, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    invoke-static {p0, p1, v0}, Ljavax/security/auth/Subject;->doAs_PrivilegedAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    .line 174
    :goto_13
    return-object v0

    :cond_14
    invoke-static {p0, p1, p2}, Ljavax/security/auth/Subject;->doAs_PrivilegedAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_13
.end method

.method public static doAsPrivileged(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .registers 5
    .parameter "subject"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .prologue
    .line 248
    .local p1, action:Ljava/security/PrivilegedExceptionAction;,"Ljava/security/PrivilegedExceptionAction<TT;>;"
    sget-object v0, Ljavax/security/auth/Subject;->_AS_PRIVILEGED:Ljavax/security/auth/AuthPermission;

    invoke-static {v0}, Ljavax/security/auth/Subject;->checkPermission(Ljava/security/Permission;)V

    .line 250
    if-nez p2, :cond_14

    .line 251
    new-instance v0, Ljava/security/AccessControlContext;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/security/ProtectionDomain;

    invoke-direct {v0, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    invoke-static {p0, p1, v0}, Ljavax/security/auth/Subject;->doAs_PrivilegedExceptionAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    .line 254
    :goto_13
    return-object v0

    :cond_14
    invoke-static {p0, p1, p2}, Ljavax/security/auth/Subject;->doAs_PrivilegedExceptionAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_13
.end method

.method private static doAs_PrivilegedAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .registers 7
    .parameter "subject"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, action:Ljava/security/PrivilegedAction;,"Ljava/security/PrivilegedAction<TT;>;"
    if-nez p0, :cond_13

    .line 188
    const/4 v0, 0x0

    .line 193
    .local v0, combiner:Ljavax/security/auth/SubjectDomainCombiner;
    :goto_3
    new-instance v1, Ljavax/security/auth/Subject$1;

    invoke-direct {v1, p2, v0}, Ljavax/security/auth/Subject$1;-><init>(Ljava/security/AccessControlContext;Ljavax/security/auth/SubjectDomainCombiner;)V

    .line 200
    .local v1, dccAction:Ljava/security/PrivilegedAction;
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/AccessControlContext;

    .line 202
    .local v2, newContext:Ljava/security/AccessControlContext;
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 190
    .end local v0           #combiner:Ljavax/security/auth/SubjectDomainCombiner;
    .end local v1           #dccAction:Ljava/security/PrivilegedAction;
    .end local v2           #newContext:Ljava/security/AccessControlContext;
    :cond_13
    new-instance v0, Ljavax/security/auth/SubjectDomainCombiner;

    invoke-direct {v0, p0}, Ljavax/security/auth/SubjectDomainCombiner;-><init>(Ljavax/security/auth/Subject;)V

    .restart local v0       #combiner:Ljavax/security/auth/SubjectDomainCombiner;
    goto :goto_3
.end method

.method private static doAs_PrivilegedExceptionAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .registers 7
    .parameter "subject"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .prologue
    .line 266
    .local p1, action:Ljava/security/PrivilegedExceptionAction;,"Ljava/security/PrivilegedExceptionAction<TT;>;"
    if-nez p0, :cond_13

    .line 269
    const/4 v0, 0x0

    .line 274
    .local v0, combiner:Ljavax/security/auth/SubjectDomainCombiner;
    :goto_3
    new-instance v1, Ljavax/security/auth/Subject$2;

    invoke-direct {v1, p2, v0}, Ljavax/security/auth/Subject$2;-><init>(Ljava/security/AccessControlContext;Ljavax/security/auth/SubjectDomainCombiner;)V

    .line 280
    .local v1, dccAction:Ljava/security/PrivilegedAction;,"Ljava/security/PrivilegedAction<Ljava/security/AccessControlContext;>;"
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/AccessControlContext;

    .line 282
    .local v2, newContext:Ljava/security/AccessControlContext;
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 271
    .end local v0           #combiner:Ljavax/security/auth/SubjectDomainCombiner;
    .end local v1           #dccAction:Ljava/security/PrivilegedAction;,"Ljava/security/PrivilegedAction<Ljava/security/AccessControlContext;>;"
    .end local v2           #newContext:Ljava/security/AccessControlContext;
    :cond_13
    new-instance v0, Ljavax/security/auth/SubjectDomainCombiner;

    invoke-direct {v0, p0}, Ljavax/security/auth/SubjectDomainCombiner;-><init>(Ljavax/security/auth/Subject;)V

    .restart local v0       #combiner:Ljavax/security/auth/SubjectDomainCombiner;
    goto :goto_3
.end method

.method public static getSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;
    .registers 5
    .parameter "context"

    .prologue
    .line 485
    sget-object v2, Ljavax/security/auth/Subject;->_SUBJECT:Ljavax/security/auth/AuthPermission;

    invoke-static {v2}, Ljavax/security/auth/Subject;->checkPermission(Ljava/security/Permission;)V

    .line 486
    if-nez p0, :cond_f

    .line 487
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "AccessControlContext cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 489
    :cond_f
    new-instance v0, Ljavax/security/auth/Subject$3;

    invoke-direct {v0, p0}, Ljavax/security/auth/Subject$3;-><init>(Ljava/security/AccessControlContext;)V

    .line 494
    .local v0, action:Ljava/security/PrivilegedAction;,"Ljava/security/PrivilegedAction<Ljava/security/DomainCombiner;>;"
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/DomainCombiner;

    .line 496
    .local v1, combiner:Ljava/security/DomainCombiner;
    if-eqz v1, :cond_20

    instance-of v2, v1, Ljavax/security/auth/SubjectDomainCombiner;

    if-nez v2, :cond_22

    .line 497
    :cond_20
    const/4 v2, 0x0

    .line 499
    .end local v1           #combiner:Ljava/security/DomainCombiner;
    :goto_21
    return-object v2

    .restart local v1       #combiner:Ljava/security/DomainCombiner;
    :cond_22
    check-cast v1, Ljavax/security/auth/SubjectDomainCombiner;

    .end local v1           #combiner:Ljava/security/DomainCombiner;
    invoke-virtual {v1}, Ljavax/security/auth/SubjectDomainCombiner;->getSubject()Ljavax/security/auth/Subject;

    move-result-object v2

    goto :goto_21
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 464
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 466
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    .line 467
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    .line 468
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 472
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 299
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 314
    :goto_5
    return v2

    .line 303
    :cond_6
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_14

    :cond_12
    move v2, v4

    .line 304
    goto :goto_5

    .line 307
    :cond_14
    move-object v0, p1

    check-cast v0, Ljavax/security/auth/Subject;

    move-object v1, v0

    .line 309
    .local v1, that:Ljavax/security/auth/Subject;
    iget-object v2, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    iget-object v3, v1, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    iget-object v3, v1, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v2, v3}, Ljavax/security/auth/Subject$SecureSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    iget-object v3, v1, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v2, v3}, Ljavax/security/auth/Subject$SecureSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    move v2, v5

    .line 312
    goto :goto_5

    :cond_38
    move v2, v4

    .line 314
    goto :goto_5
.end method

.method public getPrincipals()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    return-object v0
.end method

.method public getPrincipals(Ljava/lang/Class;)Ljava/util/Set;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/Principal;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, c:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object p0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    .end local p0
    check-cast p0, Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {p0, p1}, Ljavax/security/auth/Subject$SecureSet;->get(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateCredentials()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    return-object v0
.end method

.method public getPrivateCredentials(Ljava/lang/Class;)Ljava/util/Set;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, c:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v0, p1}, Ljavax/security/auth/Subject$SecureSet;->get(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPublicCredentials()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    return-object v0
.end method

.method public getPublicCredentials(Ljava/lang/Class;)Ljava/util/Set;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, c:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v0, p1}, Ljavax/security/auth/Subject$SecureSet;->get(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 398
    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v1}, Ljavax/security/auth/Subject$SecureSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v1}, Ljavax/security/auth/Subject$SecureSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 420
    iget-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    return v0
.end method

.method public setReadOnly()V
    .registers 2

    .prologue
    .line 409
    sget-object v0, Ljavax/security/auth/Subject;->_READ_ONLY:Ljavax/security/auth/AuthPermission;

    invoke-static {v0}, Ljavax/security/auth/Subject;->checkPermission(Ljava/security/Permission;)V

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    .line 412
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0xa

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Subject:\n"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v4, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 433
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 434
    const-string v4, "\tPrincipal: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 439
    :cond_25
    iget-object v4, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v4}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 440
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 441
    const-string v4, "\tPublic Credential: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 446
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int v3, v4, v5

    .line 447
    .local v3, offset:I
    iget-object v4, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v4}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 449
    :goto_4e
    :try_start_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 450
    const-string v4, "\tPrivate Credential: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 452
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_65
    .catch Ljava/lang/SecurityException; {:try_start_4e .. :try_end_65} :catch_66

    goto :goto_4e

    .line 454
    :catch_66
    move-exception v4

    move-object v1, v4

    .line 455
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 456
    const-string v4, "\tPrivate Credentials: no accessible information\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
