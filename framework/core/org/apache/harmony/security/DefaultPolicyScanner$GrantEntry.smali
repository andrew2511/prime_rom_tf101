.class public Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;
.super Ljava/lang/Object;
.source "DefaultPolicyScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/DefaultPolicyScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GrantEntry"
.end annotation


# instance fields
.field public codebase:Ljava/lang/String;

.field public permissions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;",
            ">;"
        }
    .end annotation
.end field

.field public principals:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;",
            ">;"
        }
    .end annotation
.end field

.field public signers:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPrincipal(Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;)V
    .registers 3
    .parameter "pe"

    .prologue
    .line 449
    iget-object v0, p0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->principals:Ljava/util/Collection;

    if-nez v0, :cond_b

    .line 450
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->principals:Ljava/util/Collection;

    .line 452
    :cond_b
    iget-object v0, p0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->principals:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 453
    return-void
.end method
