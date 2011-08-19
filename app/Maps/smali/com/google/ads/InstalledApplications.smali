.class public Lcom/google/ads/InstalledApplications;
.super Ljava/lang/Object;
.source "InstalledApplications.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/InstalledApplications$Application;
    }
.end annotation


# static fields
.field private static final NOT_INSTALLED:I


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0
    .parameter "packageManager"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/ads/InstalledApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 59
    return-void
.end method


# virtual methods
.method public getInstallationState()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/AdSpec$Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 72
    .local v5, state:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/ads/AdSpec$Parameter;>;"
    invoke-static {}, Lcom/google/ads/InstalledApplications$Application;->values()[Lcom/google/ads/InstalledApplications$Application;

    move-result-object v1

    .local v1, arr$:[Lcom/google/ads/InstalledApplications$Application;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 73
    .local v0, app:Lcom/google/ads/InstalledApplications$Application;
    new-instance v4, Lcom/google/ads/AdSpec$Parameter;

    invoke-static {v0}, Lcom/google/ads/InstalledApplications$Application;->access$000(Lcom/google/ads/InstalledApplications$Application;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/ads/InstalledApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0, v8}, Lcom/google/ads/InstalledApplications$Application;->access$100(Lcom/google/ads/InstalledApplications$Application;Landroid/content/pm/PackageManager;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v4, param:Lcom/google/ads/AdSpec$Parameter;
    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v0           #app:Lcom/google/ads/InstalledApplications$Application;
    .end local v4           #param:Lcom/google/ads/AdSpec$Parameter;
    :cond_0
    return-object v5
.end method
