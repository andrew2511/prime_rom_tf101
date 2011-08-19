.class Ljavax/security/auth/Subject$SecureSet$1;
.super Ljavax/security/auth/Subject$SecureSet$SecureIterator;
.source "Subject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljavax/security/auth/Subject$SecureSet;


# direct methods
.method constructor <init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 617
    .local p0, this:Ljavax/security/auth/Subject$SecureSet$1;,"Ljavax/security/auth/Subject$SecureSet.1;"
    .local p2, x0:Ljava/util/Iterator;,"Ljava/util/Iterator<TSST;>;"
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet$1;->this$1:Ljavax/security/auth/Subject$SecureSet;

    invoke-direct {p0, p1, p2}, Ljavax/security/auth/Subject$SecureSet$SecureIterator;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSST;"
        }
    .end annotation

    .prologue
    .line 624
    .local p0, this:Ljavax/security/auth/Subject$SecureSet$1;,"Ljavax/security/auth/Subject$SecureSet.1;"
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 625
    .local v0, obj:Ljava/lang/Object;,"TSST;"
    new-instance v1, Ljavax/security/auth/PrivateCredentialPermission;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljavax/security/auth/Subject$SecureSet$1;->this$1:Ljavax/security/auth/Subject$SecureSet;

    iget-object v3, v3, Ljavax/security/auth/Subject$SecureSet;->this$0:Ljavax/security/auth/Subject;

    #getter for: Ljavax/security/auth/Subject;->principals:Ljava/util/Set;
    invoke-static {v3}, Ljavax/security/auth/Subject;->access$400(Ljavax/security/auth/Subject;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/security/auth/PrivateCredentialPermission;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    #calls: Ljavax/security/auth/Subject;->checkPermission(Ljava/security/Permission;)V
    invoke-static {v1}, Ljavax/security/auth/Subject;->access$200(Ljava/security/Permission;)V

    .line 627
    return-object v0
.end method
