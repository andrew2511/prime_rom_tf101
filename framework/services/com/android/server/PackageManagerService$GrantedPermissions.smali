.class Lcom/android/server/PackageManagerService$GrantedPermissions;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GrantedPermissions"
.end annotation


# instance fields
.field gids:[I

.field grantedPermissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pkgFlags:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .parameter "pkgFlags"

    .prologue
    .line 7852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7849
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    .line 7853
    invoke-virtual {p0, p1}, Lcom/android/server/PackageManagerService$GrantedPermissions;->setFlags(I)V

    .line 7854
    return-void
.end method

.method constructor <init>(Lcom/android/server/PackageManagerService$GrantedPermissions;)V
    .registers 3
    .parameter "base"

    .prologue
    .line 7856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7849
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    .line 7857
    iget v0, p1, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    iput v0, p0, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    .line 7858
    iget-object v0, p1, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    .line 7860
    iget-object v0, p1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    if-eqz v0, :cond_26

    .line 7861
    iget-object v0, p1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    .line 7863
    :cond_26
    return-void
.end method


# virtual methods
.method setFlags(I)V
    .registers 3
    .parameter "pkgFlags"

    .prologue
    .line 7866
    const v0, 0x20040001

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    .line 7870
    return-void
.end method
