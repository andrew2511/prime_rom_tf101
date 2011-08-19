.class public Lcom/asus/provisioning/oma/Application;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BROWSER:Ljava/lang/String; = "w2"

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/asus/provisioning/oma/Application;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICEMANAGEMENT:Ljava/lang/String; = "w7"

.field public static final MMS:Ljava/lang/String; = "w4"


# instance fields
.field public accessPoint:Lcom/asus/provisioning/oma/AccessPoint;

.field public address:Ljava/lang/String;

.field public appauth:Lcom/asus/provisioning/oma/AppAuth;

.field public appauthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/provisioning/oma/AppAuth;",
            ">;"
        }
    .end annotation
.end field

.field public init:Z

.field public name:Ljava/lang/String;

.field public provider_ID:Ljava/lang/String;

.field public proxy:Lcom/asus/provisioning/oma/Proxy;

.field public resource:Lcom/asus/provisioning/oma/Resource;

.field public resourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/provisioning/oma/Resource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/asus/provisioning/oma/Application$1;

    invoke-direct {v0}, Lcom/asus/provisioning/oma/Application$1;-><init>()V

    sput-object v0, Lcom/asus/provisioning/oma/Application;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/provisioning/oma/Application;->resourceList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/provisioning/oma/Application;->appauthList:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Lcom/asus/provisioning/oma/Application;->readFromParcel(Landroid/os/Parcel;)V

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/asus/provisioning/oma/Application$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/asus/provisioning/oma/Application;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/provisioning/oma/Application;->address:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/provisioning/oma/Application;->name:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/provisioning/oma/Application;->provider_ID:Ljava/lang/String;

    .line 102
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 103
    .local v0, bary:[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 104
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/asus/provisioning/oma/Application;->init:Z

    .line 106
    const-class v1, Lcom/asus/provisioning/oma/Resource;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/provisioning/oma/Application;->resourceList:Ljava/util/ArrayList;

    .line 107
    const-class v1, Lcom/asus/provisioning/oma/AppAuth;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/provisioning/oma/Application;->appauthList:Ljava/util/ArrayList;

    .line 109
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 83
    iget-object v1, p0, Lcom/asus/provisioning/oma/Application;->address:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/asus/provisioning/oma/Application;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/asus/provisioning/oma/Application;->provider_ID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 88
    .local v0, bary:[Z
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/asus/provisioning/oma/Application;->init:Z

    aput-boolean v2, v0, v1

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 91
    iget-object v1, p0, Lcom/asus/provisioning/oma/Application;->resourceList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 92
    iget-object v1, p0, Lcom/asus/provisioning/oma/Application;->appauthList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 93
    return-void
.end method
