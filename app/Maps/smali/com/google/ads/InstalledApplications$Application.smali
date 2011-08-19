.class final enum Lcom/google/ads/InstalledApplications$Application;
.super Ljava/lang/Enum;
.source "InstalledApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/InstalledApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/InstalledApplications$Application;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/InstalledApplications$Application;

.field public static final enum YOUTUBE:Lcom/google/ads/InstalledApplications$Application;


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 24
    new-instance v0, Lcom/google/ads/InstalledApplications$Application;

    const-string v1, "YOUTUBE"

    const-string v2, "app_youtube"

    const-string v3, "com.google.android.youtube"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/ads/InstalledApplications$Application;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/ads/InstalledApplications$Application;->YOUTUBE:Lcom/google/ads/InstalledApplications$Application;

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/ads/InstalledApplications$Application;

    sget-object v1, Lcom/google/ads/InstalledApplications$Application;->YOUTUBE:Lcom/google/ads/InstalledApplications$Application;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/ads/InstalledApplications$Application;->$VALUES:[Lcom/google/ads/InstalledApplications$Application;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "tag"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/google/ads/InstalledApplications$Application;->mTag:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/google/ads/InstalledApplications$Application;->mPackageName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/google/ads/InstalledApplications$Application;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/ads/InstalledApplications$Application;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/ads/InstalledApplications$Application;Landroid/content/pm/PackageManager;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/ads/InstalledApplications$Application;->getVersionCode(Landroid/content/pm/PackageManager;)I

    move-result v0

    return v0
.end method

.method private getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/ads/InstalledApplications$Application;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private getVersionCode(Landroid/content/pm/PackageManager;)I
    .locals 5
    .parameter "packageManager"

    .prologue
    const/4 v4, 0x0

    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/google/ads/InstalledApplications$Application;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 42
    .local v0, info:Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    move v2, v4

    .line 47
    .end local v0           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 45
    .restart local v0       #info:Landroid/content/pm/PackageInfo;
    :cond_0
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    .end local v0           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v2, v4

    .line 47
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/InstalledApplications$Application;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/google/ads/InstalledApplications$Application;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/ads/InstalledApplications$Application;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/InstalledApplications$Application;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/ads/InstalledApplications$Application;->$VALUES:[Lcom/google/ads/InstalledApplications$Application;

    invoke-virtual {v0}, [Lcom/google/ads/InstalledApplications$Application;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/InstalledApplications$Application;

    return-object v0
.end method
