.class Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/layout/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionEntry"
.end annotation


# instance fields
.field groupName:Ljava/lang/String;

.field permissionsList:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/layout/AppSecurityPermissions$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;-><init>()V

    return-void
.end method
